# sandbox_telemetry_parse — 2026-11-25 05:06:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2604119 lines=5770
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5755 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5755} |
| `chromeGpuPssKb` | {'int': 5755} |
| `chromeOtherPssKb` | {'int': 5755} |
| `chromeProcesses` | {'int': 5755} |
| `chromeProfiles` | {'int': 5755} |
| `chromeRendererMaxPssKb` | {'int': 5755} |
| `chromeRendererPssKb` | {'int': 5755} |
| `chromeRenderers` | {'int': 5755} |
| `chromeTabs` | {'int': 5755} |
| `chromeTabsProbedProfiles` | {'int': 5755} |
| `chromeUtilityPssKb` | {'int': 5755} |
| `desktopPssKb` | {'int': 5755} |
| `hostPssKb` | {'int': 5755} |
| `kind` | {'str': 5755} |
| `memAvailableKb` | {'int': 5755} |
| `memTotalKb` | {'int': 5755} |
| `otherPssKb` | {'int': 5755} |
| `processes` | {'int': 5755} |
| `pssFallbackProcesses` | {'int': 5755} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
