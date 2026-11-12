# sandbox_telemetry_parse — 2026-11-12 02:17:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1926403 lines=4265
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4256 |
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
| `chromeBrowserPssKb` | {'int': 4256} |
| `chromeGpuPssKb` | {'int': 4256} |
| `chromeOtherPssKb` | {'int': 4256} |
| `chromeProcesses` | {'int': 4256} |
| `chromeProfiles` | {'int': 4256} |
| `chromeRendererMaxPssKb` | {'int': 4256} |
| `chromeRendererPssKb` | {'int': 4256} |
| `chromeRenderers` | {'int': 4256} |
| `chromeTabs` | {'int': 4256} |
| `chromeTabsProbedProfiles` | {'int': 4256} |
| `chromeUtilityPssKb` | {'int': 4256} |
| `desktopPssKb` | {'int': 4256} |
| `hostPssKb` | {'int': 4256} |
| `kind` | {'str': 4256} |
| `memAvailableKb` | {'int': 4256} |
| `memTotalKb` | {'int': 4256} |
| `otherPssKb` | {'int': 4256} |
| `processes` | {'int': 4256} |
| `pssFallbackProcesses` | {'int': 4256} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
