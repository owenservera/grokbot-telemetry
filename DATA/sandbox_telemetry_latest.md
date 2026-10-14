# sandbox_telemetry_parse — 2026-10-14 15:16:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=352478 lines=784
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 779 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 779} |
| `chromeGpuPssKb` | {'int': 779} |
| `chromeOtherPssKb` | {'int': 779} |
| `chromeProcesses` | {'int': 779} |
| `chromeProfiles` | {'int': 779} |
| `chromeRendererMaxPssKb` | {'int': 779} |
| `chromeRendererPssKb` | {'int': 779} |
| `chromeRenderers` | {'int': 779} |
| `chromeTabs` | {'int': 779} |
| `chromeTabsProbedProfiles` | {'int': 779} |
| `chromeUtilityPssKb` | {'int': 779} |
| `desktopPssKb` | {'int': 779} |
| `hostPssKb` | {'int': 779} |
| `kind` | {'str': 779} |
| `memAvailableKb` | {'int': 779} |
| `memTotalKb` | {'int': 779} |
| `otherPssKb` | {'int': 779} |
| `processes` | {'int': 779} |
| `pssFallbackProcesses` | {'int': 779} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
