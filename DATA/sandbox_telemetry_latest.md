# sandbox_telemetry_parse — 2026-11-07 09:10:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=391034 lines=872
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 863 |
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
| `chromeBrowserPssKb` | {'int': 863} |
| `chromeGpuPssKb` | {'int': 863} |
| `chromeOtherPssKb` | {'int': 863} |
| `chromeProcesses` | {'int': 863} |
| `chromeProfiles` | {'int': 863} |
| `chromeRendererMaxPssKb` | {'int': 863} |
| `chromeRendererPssKb` | {'int': 863} |
| `chromeRenderers` | {'int': 863} |
| `chromeTabs` | {'int': 863} |
| `chromeTabsProbedProfiles` | {'int': 863} |
| `chromeUtilityPssKb` | {'int': 863} |
| `desktopPssKb` | {'int': 863} |
| `hostPssKb` | {'int': 863} |
| `kind` | {'str': 863} |
| `memAvailableKb` | {'int': 863} |
| `memTotalKb` | {'int': 863} |
| `otherPssKb` | {'int': 863} |
| `processes` | {'int': 863} |
| `pssFallbackProcesses` | {'int': 863} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
