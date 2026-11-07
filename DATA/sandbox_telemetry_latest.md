# sandbox_telemetry_parse — 2026-11-07 16:13:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=533067 lines=1186
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1177 |
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
| `chromeBrowserPssKb` | {'int': 1177} |
| `chromeGpuPssKb` | {'int': 1177} |
| `chromeOtherPssKb` | {'int': 1177} |
| `chromeProcesses` | {'int': 1177} |
| `chromeProfiles` | {'int': 1177} |
| `chromeRendererMaxPssKb` | {'int': 1177} |
| `chromeRendererPssKb` | {'int': 1177} |
| `chromeRenderers` | {'int': 1177} |
| `chromeTabs` | {'int': 1177} |
| `chromeTabsProbedProfiles` | {'int': 1177} |
| `chromeUtilityPssKb` | {'int': 1177} |
| `desktopPssKb` | {'int': 1177} |
| `hostPssKb` | {'int': 1177} |
| `kind` | {'str': 1177} |
| `memAvailableKb` | {'int': 1177} |
| `memTotalKb` | {'int': 1177} |
| `otherPssKb` | {'int': 1177} |
| `processes` | {'int': 1177} |
| `pssFallbackProcesses` | {'int': 1177} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
