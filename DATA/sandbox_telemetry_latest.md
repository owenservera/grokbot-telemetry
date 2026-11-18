# sandbox_telemetry_parse — 2026-11-18 13:07:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=830281 lines=1842
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1835 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1835} |
| `chromeGpuPssKb` | {'int': 1835} |
| `chromeOtherPssKb` | {'int': 1835} |
| `chromeProcesses` | {'int': 1835} |
| `chromeProfiles` | {'int': 1835} |
| `chromeRendererMaxPssKb` | {'int': 1835} |
| `chromeRendererPssKb` | {'int': 1835} |
| `chromeRenderers` | {'int': 1835} |
| `chromeTabs` | {'int': 1835} |
| `chromeTabsProbedProfiles` | {'int': 1835} |
| `chromeUtilityPssKb` | {'int': 1835} |
| `desktopPssKb` | {'int': 1835} |
| `hostPssKb` | {'int': 1835} |
| `kind` | {'str': 1835} |
| `memAvailableKb` | {'int': 1835} |
| `memTotalKb` | {'int': 1835} |
| `otherPssKb` | {'int': 1835} |
| `processes` | {'int': 1835} |
| `pssFallbackProcesses` | {'int': 1835} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
