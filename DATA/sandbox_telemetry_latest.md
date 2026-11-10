# sandbox_telemetry_parse — 2026-11-10 01:13:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=918616 lines=2038
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2029 |
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
| `chromeBrowserPssKb` | {'int': 2029} |
| `chromeGpuPssKb` | {'int': 2029} |
| `chromeOtherPssKb` | {'int': 2029} |
| `chromeProcesses` | {'int': 2029} |
| `chromeProfiles` | {'int': 2029} |
| `chromeRendererMaxPssKb` | {'int': 2029} |
| `chromeRendererPssKb` | {'int': 2029} |
| `chromeRenderers` | {'int': 2029} |
| `chromeTabs` | {'int': 2029} |
| `chromeTabsProbedProfiles` | {'int': 2029} |
| `chromeUtilityPssKb` | {'int': 2029} |
| `desktopPssKb` | {'int': 2029} |
| `hostPssKb` | {'int': 2029} |
| `kind` | {'str': 2029} |
| `memAvailableKb` | {'int': 2029} |
| `memTotalKb` | {'int': 2029} |
| `otherPssKb` | {'int': 2029} |
| `processes` | {'int': 2029} |
| `pssFallbackProcesses` | {'int': 2029} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
