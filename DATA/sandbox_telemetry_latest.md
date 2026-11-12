# sandbox_telemetry_parse — 2026-11-12 03:23:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1947231 lines=4311
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4302 |
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
| `chromeBrowserPssKb` | {'int': 4302} |
| `chromeGpuPssKb` | {'int': 4302} |
| `chromeOtherPssKb` | {'int': 4302} |
| `chromeProcesses` | {'int': 4302} |
| `chromeProfiles` | {'int': 4302} |
| `chromeRendererMaxPssKb` | {'int': 4302} |
| `chromeRendererPssKb` | {'int': 4302} |
| `chromeRenderers` | {'int': 4302} |
| `chromeTabs` | {'int': 4302} |
| `chromeTabsProbedProfiles` | {'int': 4302} |
| `chromeUtilityPssKb` | {'int': 4302} |
| `desktopPssKb` | {'int': 4302} |
| `hostPssKb` | {'int': 4302} |
| `kind` | {'str': 4302} |
| `memAvailableKb` | {'int': 4302} |
| `memTotalKb` | {'int': 4302} |
| `otherPssKb` | {'int': 4302} |
| `processes` | {'int': 4302} |
| `pssFallbackProcesses` | {'int': 4302} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
