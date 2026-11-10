# sandbox_telemetry_parse — 2026-11-10 02:56:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=962076 lines=2134
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2125 |
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
| `chromeBrowserPssKb` | {'int': 2125} |
| `chromeGpuPssKb` | {'int': 2125} |
| `chromeOtherPssKb` | {'int': 2125} |
| `chromeProcesses` | {'int': 2125} |
| `chromeProfiles` | {'int': 2125} |
| `chromeRendererMaxPssKb` | {'int': 2125} |
| `chromeRendererPssKb` | {'int': 2125} |
| `chromeRenderers` | {'int': 2125} |
| `chromeTabs` | {'int': 2125} |
| `chromeTabsProbedProfiles` | {'int': 2125} |
| `chromeUtilityPssKb` | {'int': 2125} |
| `desktopPssKb` | {'int': 2125} |
| `hostPssKb` | {'int': 2125} |
| `kind` | {'str': 2125} |
| `memAvailableKb` | {'int': 2125} |
| `memTotalKb` | {'int': 2125} |
| `otherPssKb` | {'int': 2125} |
| `processes` | {'int': 2125} |
| `pssFallbackProcesses` | {'int': 2125} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
