# sandbox_telemetry_parse — 2026-11-17 21:44:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=553111 lines=1229
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1222 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1222} |
| `chromeGpuPssKb` | {'int': 1222} |
| `chromeOtherPssKb` | {'int': 1222} |
| `chromeProcesses` | {'int': 1222} |
| `chromeProfiles` | {'int': 1222} |
| `chromeRendererMaxPssKb` | {'int': 1222} |
| `chromeRendererPssKb` | {'int': 1222} |
| `chromeRenderers` | {'int': 1222} |
| `chromeTabs` | {'int': 1222} |
| `chromeTabsProbedProfiles` | {'int': 1222} |
| `chromeUtilityPssKb` | {'int': 1222} |
| `desktopPssKb` | {'int': 1222} |
| `hostPssKb` | {'int': 1222} |
| `kind` | {'str': 1222} |
| `memAvailableKb` | {'int': 1222} |
| `memTotalKb` | {'int': 1222} |
| `otherPssKb` | {'int': 1222} |
| `processes` | {'int': 1222} |
| `pssFallbackProcesses` | {'int': 1222} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
