# sandbox_telemetry_parse — 2026-11-12 22:57:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2361850 lines=5227
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5218 |
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
| `chromeBrowserPssKb` | {'int': 5218} |
| `chromeGpuPssKb` | {'int': 5218} |
| `chromeOtherPssKb` | {'int': 5218} |
| `chromeProcesses` | {'int': 5218} |
| `chromeProfiles` | {'int': 5218} |
| `chromeRendererMaxPssKb` | {'int': 5218} |
| `chromeRendererPssKb` | {'int': 5218} |
| `chromeRenderers` | {'int': 5218} |
| `chromeTabs` | {'int': 5218} |
| `chromeTabsProbedProfiles` | {'int': 5218} |
| `chromeUtilityPssKb` | {'int': 5218} |
| `desktopPssKb` | {'int': 5218} |
| `hostPssKb` | {'int': 5218} |
| `kind` | {'str': 5218} |
| `memAvailableKb` | {'int': 5218} |
| `memTotalKb` | {'int': 5218} |
| `otherPssKb` | {'int': 5218} |
| `processes` | {'int': 5218} |
| `pssFallbackProcesses` | {'int': 5218} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
