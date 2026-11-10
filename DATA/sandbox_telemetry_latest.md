# sandbox_telemetry_parse — 2026-11-10 02:18:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=948047 lines=2103
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2094 |
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
| `chromeBrowserPssKb` | {'int': 2094} |
| `chromeGpuPssKb` | {'int': 2094} |
| `chromeOtherPssKb` | {'int': 2094} |
| `chromeProcesses` | {'int': 2094} |
| `chromeProfiles` | {'int': 2094} |
| `chromeRendererMaxPssKb` | {'int': 2094} |
| `chromeRendererPssKb` | {'int': 2094} |
| `chromeRenderers` | {'int': 2094} |
| `chromeTabs` | {'int': 2094} |
| `chromeTabsProbedProfiles` | {'int': 2094} |
| `chromeUtilityPssKb` | {'int': 2094} |
| `desktopPssKb` | {'int': 2094} |
| `hostPssKb` | {'int': 2094} |
| `kind` | {'str': 2094} |
| `memAvailableKb` | {'int': 2094} |
| `memTotalKb` | {'int': 2094} |
| `otherPssKb` | {'int': 2094} |
| `processes` | {'int': 2094} |
| `pssFallbackProcesses` | {'int': 2094} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
