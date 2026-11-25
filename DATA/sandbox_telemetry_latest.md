# sandbox_telemetry_parse — 2026-11-25 23:46:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2979922 lines=6601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6586 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6586} |
| `chromeGpuPssKb` | {'int': 6586} |
| `chromeOtherPssKb` | {'int': 6586} |
| `chromeProcesses` | {'int': 6586} |
| `chromeProfiles` | {'int': 6586} |
| `chromeRendererMaxPssKb` | {'int': 6586} |
| `chromeRendererPssKb` | {'int': 6586} |
| `chromeRenderers` | {'int': 6586} |
| `chromeTabs` | {'int': 6586} |
| `chromeTabsProbedProfiles` | {'int': 6586} |
| `chromeUtilityPssKb` | {'int': 6586} |
| `desktopPssKb` | {'int': 6586} |
| `hostPssKb` | {'int': 6586} |
| `kind` | {'str': 6586} |
| `memAvailableKb` | {'int': 6586} |
| `memTotalKb` | {'int': 6586} |
| `otherPssKb` | {'int': 6586} |
| `processes` | {'int': 6586} |
| `pssFallbackProcesses` | {'int': 6586} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
