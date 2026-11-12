# sandbox_telemetry_parse — 2026-11-12 13:18:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2144929 lines=4748
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4739 |
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
| `chromeBrowserPssKb` | {'int': 4739} |
| `chromeGpuPssKb` | {'int': 4739} |
| `chromeOtherPssKb` | {'int': 4739} |
| `chromeProcesses` | {'int': 4739} |
| `chromeProfiles` | {'int': 4739} |
| `chromeRendererMaxPssKb` | {'int': 4739} |
| `chromeRendererPssKb` | {'int': 4739} |
| `chromeRenderers` | {'int': 4739} |
| `chromeTabs` | {'int': 4739} |
| `chromeTabsProbedProfiles` | {'int': 4739} |
| `chromeUtilityPssKb` | {'int': 4739} |
| `desktopPssKb` | {'int': 4739} |
| `hostPssKb` | {'int': 4739} |
| `kind` | {'str': 4739} |
| `memAvailableKb` | {'int': 4739} |
| `memTotalKb` | {'int': 4739} |
| `otherPssKb` | {'int': 4739} |
| `processes` | {'int': 4739} |
| `pssFallbackProcesses` | {'int': 4739} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
