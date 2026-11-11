# sandbox_telemetry_parse — 2026-11-11 02:33:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1436344 lines=3182
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3173 |
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
| `chromeBrowserPssKb` | {'int': 3173} |
| `chromeGpuPssKb` | {'int': 3173} |
| `chromeOtherPssKb` | {'int': 3173} |
| `chromeProcesses` | {'int': 3173} |
| `chromeProfiles` | {'int': 3173} |
| `chromeRendererMaxPssKb` | {'int': 3173} |
| `chromeRendererPssKb` | {'int': 3173} |
| `chromeRenderers` | {'int': 3173} |
| `chromeTabs` | {'int': 3173} |
| `chromeTabsProbedProfiles` | {'int': 3173} |
| `chromeUtilityPssKb` | {'int': 3173} |
| `desktopPssKb` | {'int': 3173} |
| `hostPssKb` | {'int': 3173} |
| `kind` | {'str': 3173} |
| `memAvailableKb` | {'int': 3173} |
| `memTotalKb` | {'int': 3173} |
| `otherPssKb` | {'int': 3173} |
| `processes` | {'int': 3173} |
| `pssFallbackProcesses` | {'int': 3173} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
