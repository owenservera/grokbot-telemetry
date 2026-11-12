# sandbox_telemetry_parse — 2026-11-12 10:39:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2087927 lines=4622
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4613 |
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
| `chromeBrowserPssKb` | {'int': 4613} |
| `chromeGpuPssKb` | {'int': 4613} |
| `chromeOtherPssKb` | {'int': 4613} |
| `chromeProcesses` | {'int': 4613} |
| `chromeProfiles` | {'int': 4613} |
| `chromeRendererMaxPssKb` | {'int': 4613} |
| `chromeRendererPssKb` | {'int': 4613} |
| `chromeRenderers` | {'int': 4613} |
| `chromeTabs` | {'int': 4613} |
| `chromeTabsProbedProfiles` | {'int': 4613} |
| `chromeUtilityPssKb` | {'int': 4613} |
| `desktopPssKb` | {'int': 4613} |
| `hostPssKb` | {'int': 4613} |
| `kind` | {'str': 4613} |
| `memAvailableKb` | {'int': 4613} |
| `memTotalKb` | {'int': 4613} |
| `otherPssKb` | {'int': 4613} |
| `processes` | {'int': 4613} |
| `pssFallbackProcesses` | {'int': 4613} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
