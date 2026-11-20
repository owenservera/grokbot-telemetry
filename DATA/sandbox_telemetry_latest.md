# sandbox_telemetry_parse — 2026-11-20 17:01:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1807744 lines=4008
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3995 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 3995} |
| `chromeGpuPssKb` | {'int': 3995} |
| `chromeOtherPssKb` | {'int': 3995} |
| `chromeProcesses` | {'int': 3995} |
| `chromeProfiles` | {'int': 3995} |
| `chromeRendererMaxPssKb` | {'int': 3995} |
| `chromeRendererPssKb` | {'int': 3995} |
| `chromeRenderers` | {'int': 3995} |
| `chromeTabs` | {'int': 3995} |
| `chromeTabsProbedProfiles` | {'int': 3995} |
| `chromeUtilityPssKb` | {'int': 3995} |
| `desktopPssKb` | {'int': 3995} |
| `hostPssKb` | {'int': 3995} |
| `kind` | {'str': 3995} |
| `memAvailableKb` | {'int': 3995} |
| `memTotalKb` | {'int': 3995} |
| `otherPssKb` | {'int': 3995} |
| `processes` | {'int': 3995} |
| `pssFallbackProcesses` | {'int': 3995} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
