# sandbox_telemetry_parse — 2026-11-20 02:29:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1540322 lines=3415
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3404 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3404} |
| `chromeGpuPssKb` | {'int': 3404} |
| `chromeOtherPssKb` | {'int': 3404} |
| `chromeProcesses` | {'int': 3404} |
| `chromeProfiles` | {'int': 3404} |
| `chromeRendererMaxPssKb` | {'int': 3404} |
| `chromeRendererPssKb` | {'int': 3404} |
| `chromeRenderers` | {'int': 3404} |
| `chromeTabs` | {'int': 3404} |
| `chromeTabsProbedProfiles` | {'int': 3404} |
| `chromeUtilityPssKb` | {'int': 3404} |
| `desktopPssKb` | {'int': 3404} |
| `hostPssKb` | {'int': 3404} |
| `kind` | {'str': 3404} |
| `memAvailableKb` | {'int': 3404} |
| `memTotalKb` | {'int': 3404} |
| `otherPssKb` | {'int': 3404} |
| `processes` | {'int': 3404} |
| `pssFallbackProcesses` | {'int': 3404} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
