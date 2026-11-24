# sandbox_telemetry_parse — 2026-11-24 16:42:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2362082 lines=5235
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5220 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5220} |
| `chromeGpuPssKb` | {'int': 5220} |
| `chromeOtherPssKb` | {'int': 5220} |
| `chromeProcesses` | {'int': 5220} |
| `chromeProfiles` | {'int': 5220} |
| `chromeRendererMaxPssKb` | {'int': 5220} |
| `chromeRendererPssKb` | {'int': 5220} |
| `chromeRenderers` | {'int': 5220} |
| `chromeTabs` | {'int': 5220} |
| `chromeTabsProbedProfiles` | {'int': 5220} |
| `chromeUtilityPssKb` | {'int': 5220} |
| `desktopPssKb` | {'int': 5220} |
| `hostPssKb` | {'int': 5220} |
| `kind` | {'str': 5220} |
| `memAvailableKb` | {'int': 5220} |
| `memTotalKb` | {'int': 5220} |
| `otherPssKb` | {'int': 5220} |
| `processes` | {'int': 5220} |
| `pssFallbackProcesses` | {'int': 5220} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
