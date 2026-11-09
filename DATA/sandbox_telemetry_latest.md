# sandbox_telemetry_parse — 2026-11-09 22:42:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=870231 lines=1931
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1922 |
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
| `chromeBrowserPssKb` | {'int': 1922} |
| `chromeGpuPssKb` | {'int': 1922} |
| `chromeOtherPssKb` | {'int': 1922} |
| `chromeProcesses` | {'int': 1922} |
| `chromeProfiles` | {'int': 1922} |
| `chromeRendererMaxPssKb` | {'int': 1922} |
| `chromeRendererPssKb` | {'int': 1922} |
| `chromeRenderers` | {'int': 1922} |
| `chromeTabs` | {'int': 1922} |
| `chromeTabsProbedProfiles` | {'int': 1922} |
| `chromeUtilityPssKb` | {'int': 1922} |
| `desktopPssKb` | {'int': 1922} |
| `hostPssKb` | {'int': 1922} |
| `kind` | {'str': 1922} |
| `memAvailableKb` | {'int': 1922} |
| `memTotalKb` | {'int': 1922} |
| `otherPssKb` | {'int': 1922} |
| `processes` | {'int': 1922} |
| `pssFallbackProcesses` | {'int': 1922} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
