# sandbox_telemetry_parse — 2026-11-24 09:02:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2217327 lines=4915
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4900 |
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
| `chromeBrowserPssKb` | {'int': 4900} |
| `chromeGpuPssKb` | {'int': 4900} |
| `chromeOtherPssKb` | {'int': 4900} |
| `chromeProcesses` | {'int': 4900} |
| `chromeProfiles` | {'int': 4900} |
| `chromeRendererMaxPssKb` | {'int': 4900} |
| `chromeRendererPssKb` | {'int': 4900} |
| `chromeRenderers` | {'int': 4900} |
| `chromeTabs` | {'int': 4900} |
| `chromeTabsProbedProfiles` | {'int': 4900} |
| `chromeUtilityPssKb` | {'int': 4900} |
| `desktopPssKb` | {'int': 4900} |
| `hostPssKb` | {'int': 4900} |
| `kind` | {'str': 4900} |
| `memAvailableKb` | {'int': 4900} |
| `memTotalKb` | {'int': 4900} |
| `otherPssKb` | {'int': 4900} |
| `processes` | {'int': 4900} |
| `pssFallbackProcesses` | {'int': 4900} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
