# sandbox_telemetry_parse — 2026-11-25 17:04:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2844713 lines=6302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6287 |
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
| `chromeBrowserPssKb` | {'int': 6287} |
| `chromeGpuPssKb` | {'int': 6287} |
| `chromeOtherPssKb` | {'int': 6287} |
| `chromeProcesses` | {'int': 6287} |
| `chromeProfiles` | {'int': 6287} |
| `chromeRendererMaxPssKb` | {'int': 6287} |
| `chromeRendererPssKb` | {'int': 6287} |
| `chromeRenderers` | {'int': 6287} |
| `chromeTabs` | {'int': 6287} |
| `chromeTabsProbedProfiles` | {'int': 6287} |
| `chromeUtilityPssKb` | {'int': 6287} |
| `desktopPssKb` | {'int': 6287} |
| `hostPssKb` | {'int': 6287} |
| `kind` | {'str': 6287} |
| `memAvailableKb` | {'int': 6287} |
| `memTotalKb` | {'int': 6287} |
| `otherPssKb` | {'int': 6287} |
| `processes` | {'int': 6287} |
| `pssFallbackProcesses` | {'int': 6287} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
