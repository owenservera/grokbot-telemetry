# sandbox_telemetry_parse — 2026-10-27 08:23:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=412728 lines=916
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 911 |
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
| `chromeBrowserPssKb` | {'int': 911} |
| `chromeGpuPssKb` | {'int': 911} |
| `chromeOtherPssKb` | {'int': 911} |
| `chromeProcesses` | {'int': 911} |
| `chromeProfiles` | {'int': 911} |
| `chromeRendererMaxPssKb` | {'int': 911} |
| `chromeRendererPssKb` | {'int': 911} |
| `chromeRenderers` | {'int': 911} |
| `chromeTabs` | {'int': 911} |
| `chromeTabsProbedProfiles` | {'int': 911} |
| `chromeUtilityPssKb` | {'int': 911} |
| `desktopPssKb` | {'int': 911} |
| `hostPssKb` | {'int': 911} |
| `kind` | {'str': 911} |
| `memAvailableKb` | {'int': 911} |
| `memTotalKb` | {'int': 911} |
| `otherPssKb` | {'int': 911} |
| `processes` | {'int': 911} |
| `pssFallbackProcesses` | {'int': 911} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
