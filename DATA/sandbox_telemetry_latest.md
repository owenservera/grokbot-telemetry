# sandbox_telemetry_parse — 2026-11-12 17:31:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2244589 lines=4968
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4959 |
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
| `chromeBrowserPssKb` | {'int': 4959} |
| `chromeGpuPssKb` | {'int': 4959} |
| `chromeOtherPssKb` | {'int': 4959} |
| `chromeProcesses` | {'int': 4959} |
| `chromeProfiles` | {'int': 4959} |
| `chromeRendererMaxPssKb` | {'int': 4959} |
| `chromeRendererPssKb` | {'int': 4959} |
| `chromeRenderers` | {'int': 4959} |
| `chromeTabs` | {'int': 4959} |
| `chromeTabsProbedProfiles` | {'int': 4959} |
| `chromeUtilityPssKb` | {'int': 4959} |
| `desktopPssKb` | {'int': 4959} |
| `hostPssKb` | {'int': 4959} |
| `kind` | {'str': 4959} |
| `memAvailableKb` | {'int': 4959} |
| `memTotalKb` | {'int': 4959} |
| `otherPssKb` | {'int': 4959} |
| `processes` | {'int': 4959} |
| `pssFallbackProcesses` | {'int': 4959} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
