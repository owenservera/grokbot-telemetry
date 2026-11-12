# sandbox_telemetry_parse — 2026-11-12 04:07:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1962161 lines=4344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4335 |
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
| `chromeBrowserPssKb` | {'int': 4335} |
| `chromeGpuPssKb` | {'int': 4335} |
| `chromeOtherPssKb` | {'int': 4335} |
| `chromeProcesses` | {'int': 4335} |
| `chromeProfiles` | {'int': 4335} |
| `chromeRendererMaxPssKb` | {'int': 4335} |
| `chromeRendererPssKb` | {'int': 4335} |
| `chromeRenderers` | {'int': 4335} |
| `chromeTabs` | {'int': 4335} |
| `chromeTabsProbedProfiles` | {'int': 4335} |
| `chromeUtilityPssKb` | {'int': 4335} |
| `desktopPssKb` | {'int': 4335} |
| `hostPssKb` | {'int': 4335} |
| `kind` | {'str': 4335} |
| `memAvailableKb` | {'int': 4335} |
| `memTotalKb` | {'int': 4335} |
| `otherPssKb` | {'int': 4335} |
| `processes` | {'int': 4335} |
| `pssFallbackProcesses` | {'int': 4335} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
