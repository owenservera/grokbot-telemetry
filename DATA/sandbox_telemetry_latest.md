# sandbox_telemetry_parse — 2026-11-28 16:00:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=956612 lines=2121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2113 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 2113} |
| `chromeGpuPssKb` | {'int': 2113} |
| `chromeOtherPssKb` | {'int': 2113} |
| `chromeProcesses` | {'int': 2113} |
| `chromeProfiles` | {'int': 2113} |
| `chromeRendererMaxPssKb` | {'int': 2113} |
| `chromeRendererPssKb` | {'int': 2113} |
| `chromeRenderers` | {'int': 2113} |
| `chromeTabs` | {'int': 2113} |
| `chromeTabsProbedProfiles` | {'int': 2113} |
| `chromeUtilityPssKb` | {'int': 2113} |
| `desktopPssKb` | {'int': 2113} |
| `hostPssKb` | {'int': 2113} |
| `kind` | {'str': 2113} |
| `memAvailableKb` | {'int': 2113} |
| `memTotalKb` | {'int': 2113} |
| `otherPssKb` | {'int': 2113} |
| `processes` | {'int': 2113} |
| `pssFallbackProcesses` | {'int': 2113} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
