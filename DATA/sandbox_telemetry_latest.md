# sandbox_telemetry_parse — 2026-11-12 04:32:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1968950 lines=4359
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4350 |
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
| `chromeBrowserPssKb` | {'int': 4350} |
| `chromeGpuPssKb` | {'int': 4350} |
| `chromeOtherPssKb` | {'int': 4350} |
| `chromeProcesses` | {'int': 4350} |
| `chromeProfiles` | {'int': 4350} |
| `chromeRendererMaxPssKb` | {'int': 4350} |
| `chromeRendererPssKb` | {'int': 4350} |
| `chromeRenderers` | {'int': 4350} |
| `chromeTabs` | {'int': 4350} |
| `chromeTabsProbedProfiles` | {'int': 4350} |
| `chromeUtilityPssKb` | {'int': 4350} |
| `desktopPssKb` | {'int': 4350} |
| `hostPssKb` | {'int': 4350} |
| `kind` | {'str': 4350} |
| `memAvailableKb` | {'int': 4350} |
| `memTotalKb` | {'int': 4350} |
| `otherPssKb` | {'int': 4350} |
| `processes` | {'int': 4350} |
| `pssFallbackProcesses` | {'int': 4350} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
