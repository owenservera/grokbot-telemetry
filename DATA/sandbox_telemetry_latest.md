# sandbox_telemetry_parse — 2026-11-28 19:54:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1033146 lines=2290
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2282 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2282} |
| `chromeGpuPssKb` | {'int': 2282} |
| `chromeOtherPssKb` | {'int': 2282} |
| `chromeProcesses` | {'int': 2282} |
| `chromeProfiles` | {'int': 2282} |
| `chromeRendererMaxPssKb` | {'int': 2282} |
| `chromeRendererPssKb` | {'int': 2282} |
| `chromeRenderers` | {'int': 2282} |
| `chromeTabs` | {'int': 2282} |
| `chromeTabsProbedProfiles` | {'int': 2282} |
| `chromeUtilityPssKb` | {'int': 2282} |
| `desktopPssKb` | {'int': 2282} |
| `hostPssKb` | {'int': 2282} |
| `kind` | {'str': 2282} |
| `memAvailableKb` | {'int': 2282} |
| `memTotalKb` | {'int': 2282} |
| `otherPssKb` | {'int': 2282} |
| `processes` | {'int': 2282} |
| `pssFallbackProcesses` | {'int': 2282} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
