# sandbox_telemetry_parse — 2026-11-24 06:42:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2170749 lines=4812
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4797 |
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
| `chromeBrowserPssKb` | {'int': 4797} |
| `chromeGpuPssKb` | {'int': 4797} |
| `chromeOtherPssKb` | {'int': 4797} |
| `chromeProcesses` | {'int': 4797} |
| `chromeProfiles` | {'int': 4797} |
| `chromeRendererMaxPssKb` | {'int': 4797} |
| `chromeRendererPssKb` | {'int': 4797} |
| `chromeRenderers` | {'int': 4797} |
| `chromeTabs` | {'int': 4797} |
| `chromeTabsProbedProfiles` | {'int': 4797} |
| `chromeUtilityPssKb` | {'int': 4797} |
| `desktopPssKb` | {'int': 4797} |
| `hostPssKb` | {'int': 4797} |
| `kind` | {'str': 4797} |
| `memAvailableKb` | {'int': 4797} |
| `memTotalKb` | {'int': 4797} |
| `otherPssKb` | {'int': 4797} |
| `processes` | {'int': 4797} |
| `pssFallbackProcesses` | {'int': 4797} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
