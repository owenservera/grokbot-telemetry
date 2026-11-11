# sandbox_telemetry_parse — 2026-11-12 00:34:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1890616 lines=4186
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4177 |
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
| `chromeBrowserPssKb` | {'int': 4177} |
| `chromeGpuPssKb` | {'int': 4177} |
| `chromeOtherPssKb` | {'int': 4177} |
| `chromeProcesses` | {'int': 4177} |
| `chromeProfiles` | {'int': 4177} |
| `chromeRendererMaxPssKb` | {'int': 4177} |
| `chromeRendererPssKb` | {'int': 4177} |
| `chromeRenderers` | {'int': 4177} |
| `chromeTabs` | {'int': 4177} |
| `chromeTabsProbedProfiles` | {'int': 4177} |
| `chromeUtilityPssKb` | {'int': 4177} |
| `desktopPssKb` | {'int': 4177} |
| `hostPssKb` | {'int': 4177} |
| `kind` | {'str': 4177} |
| `memAvailableKb` | {'int': 4177} |
| `memTotalKb` | {'int': 4177} |
| `otherPssKb` | {'int': 4177} |
| `processes` | {'int': 4177} |
| `pssFallbackProcesses` | {'int': 4177} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
