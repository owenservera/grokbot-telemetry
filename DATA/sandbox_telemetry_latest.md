# sandbox_telemetry_parse — 2026-10-27 06:45:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=377020 lines=837
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 832 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 832} |
| `chromeGpuPssKb` | {'int': 832} |
| `chromeOtherPssKb` | {'int': 832} |
| `chromeProcesses` | {'int': 832} |
| `chromeProfiles` | {'int': 832} |
| `chromeRendererMaxPssKb` | {'int': 832} |
| `chromeRendererPssKb` | {'int': 832} |
| `chromeRenderers` | {'int': 832} |
| `chromeTabs` | {'int': 832} |
| `chromeTabsProbedProfiles` | {'int': 832} |
| `chromeUtilityPssKb` | {'int': 832} |
| `desktopPssKb` | {'int': 832} |
| `hostPssKb` | {'int': 832} |
| `kind` | {'str': 832} |
| `memAvailableKb` | {'int': 832} |
| `memTotalKb` | {'int': 832} |
| `otherPssKb` | {'int': 832} |
| `processes` | {'int': 832} |
| `pssFallbackProcesses` | {'int': 832} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
