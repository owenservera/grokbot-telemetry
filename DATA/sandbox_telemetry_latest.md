# sandbox_telemetry_parse — 2026-11-24 14:26:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2321339 lines=5145
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5130 |
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
| `chromeBrowserPssKb` | {'int': 5130} |
| `chromeGpuPssKb` | {'int': 5130} |
| `chromeOtherPssKb` | {'int': 5130} |
| `chromeProcesses` | {'int': 5130} |
| `chromeProfiles` | {'int': 5130} |
| `chromeRendererMaxPssKb` | {'int': 5130} |
| `chromeRendererPssKb` | {'int': 5130} |
| `chromeRenderers` | {'int': 5130} |
| `chromeTabs` | {'int': 5130} |
| `chromeTabsProbedProfiles` | {'int': 5130} |
| `chromeUtilityPssKb` | {'int': 5130} |
| `desktopPssKb` | {'int': 5130} |
| `hostPssKb` | {'int': 5130} |
| `kind` | {'str': 5130} |
| `memAvailableKb` | {'int': 5130} |
| `memTotalKb` | {'int': 5130} |
| `otherPssKb` | {'int': 5130} |
| `processes` | {'int': 5130} |
| `pssFallbackProcesses` | {'int': 5130} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
