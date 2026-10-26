# sandbox_telemetry_parse — 2026-10-26 18:01:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=59271 lines=135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 130 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 130} |
| `chromeGpuPssKb` | {'int': 130} |
| `chromeOtherPssKb` | {'int': 130} |
| `chromeProcesses` | {'int': 130} |
| `chromeProfiles` | {'int': 130} |
| `chromeRendererMaxPssKb` | {'int': 130} |
| `chromeRendererPssKb` | {'int': 130} |
| `chromeRenderers` | {'int': 130} |
| `chromeTabs` | {'int': 130} |
| `chromeTabsProbedProfiles` | {'int': 130} |
| `chromeUtilityPssKb` | {'int': 130} |
| `desktopPssKb` | {'int': 130} |
| `hostPssKb` | {'int': 130} |
| `kind` | {'str': 130} |
| `memAvailableKb` | {'int': 130} |
| `memTotalKb` | {'int': 130} |
| `otherPssKb` | {'int': 130} |
| `processes` | {'int': 130} |
| `pssFallbackProcesses` | {'int': 130} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
