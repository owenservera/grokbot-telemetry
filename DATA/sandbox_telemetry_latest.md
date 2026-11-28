# sandbox_telemetry_parse — 2026-11-28 07:21:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=786953 lines=1746
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1738 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1738} |
| `chromeGpuPssKb` | {'int': 1738} |
| `chromeOtherPssKb` | {'int': 1738} |
| `chromeProcesses` | {'int': 1738} |
| `chromeProfiles` | {'int': 1738} |
| `chromeRendererMaxPssKb` | {'int': 1738} |
| `chromeRendererPssKb` | {'int': 1738} |
| `chromeRenderers` | {'int': 1738} |
| `chromeTabs` | {'int': 1738} |
| `chromeTabsProbedProfiles` | {'int': 1738} |
| `chromeUtilityPssKb` | {'int': 1738} |
| `desktopPssKb` | {'int': 1738} |
| `hostPssKb` | {'int': 1738} |
| `kind` | {'str': 1738} |
| `memAvailableKb` | {'int': 1738} |
| `memTotalKb` | {'int': 1738} |
| `otherPssKb` | {'int': 1738} |
| `processes` | {'int': 1738} |
| `pssFallbackProcesses` | {'int': 1738} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
