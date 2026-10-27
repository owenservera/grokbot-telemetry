# sandbox_telemetry_parse — 2026-10-27 09:58:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=453418 lines=1006
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1001 |
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
| `chromeBrowserPssKb` | {'int': 1001} |
| `chromeGpuPssKb` | {'int': 1001} |
| `chromeOtherPssKb` | {'int': 1001} |
| `chromeProcesses` | {'int': 1001} |
| `chromeProfiles` | {'int': 1001} |
| `chromeRendererMaxPssKb` | {'int': 1001} |
| `chromeRendererPssKb` | {'int': 1001} |
| `chromeRenderers` | {'int': 1001} |
| `chromeTabs` | {'int': 1001} |
| `chromeTabsProbedProfiles` | {'int': 1001} |
| `chromeUtilityPssKb` | {'int': 1001} |
| `desktopPssKb` | {'int': 1001} |
| `hostPssKb` | {'int': 1001} |
| `kind` | {'str': 1001} |
| `memAvailableKb` | {'int': 1001} |
| `memTotalKb` | {'int': 1001} |
| `otherPssKb` | {'int': 1001} |
| `processes` | {'int': 1001} |
| `pssFallbackProcesses` | {'int': 1001} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
