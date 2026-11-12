# sandbox_telemetry_parse — 2026-11-12 17:04:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2233717 lines=4944
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4935 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4935} |
| `chromeGpuPssKb` | {'int': 4935} |
| `chromeOtherPssKb` | {'int': 4935} |
| `chromeProcesses` | {'int': 4935} |
| `chromeProfiles` | {'int': 4935} |
| `chromeRendererMaxPssKb` | {'int': 4935} |
| `chromeRendererPssKb` | {'int': 4935} |
| `chromeRenderers` | {'int': 4935} |
| `chromeTabs` | {'int': 4935} |
| `chromeTabsProbedProfiles` | {'int': 4935} |
| `chromeUtilityPssKb` | {'int': 4935} |
| `desktopPssKb` | {'int': 4935} |
| `hostPssKb` | {'int': 4935} |
| `kind` | {'str': 4935} |
| `memAvailableKb` | {'int': 4935} |
| `memTotalKb` | {'int': 4935} |
| `otherPssKb` | {'int': 4935} |
| `processes` | {'int': 4935} |
| `pssFallbackProcesses` | {'int': 4935} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
