# sandbox_telemetry_parse — 2026-11-11 23:13:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1864379 lines=4128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4119 |
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
| `chromeBrowserPssKb` | {'int': 4119} |
| `chromeGpuPssKb` | {'int': 4119} |
| `chromeOtherPssKb` | {'int': 4119} |
| `chromeProcesses` | {'int': 4119} |
| `chromeProfiles` | {'int': 4119} |
| `chromeRendererMaxPssKb` | {'int': 4119} |
| `chromeRendererPssKb` | {'int': 4119} |
| `chromeRenderers` | {'int': 4119} |
| `chromeTabs` | {'int': 4119} |
| `chromeTabsProbedProfiles` | {'int': 4119} |
| `chromeUtilityPssKb` | {'int': 4119} |
| `desktopPssKb` | {'int': 4119} |
| `hostPssKb` | {'int': 4119} |
| `kind` | {'str': 4119} |
| `memAvailableKb` | {'int': 4119} |
| `memTotalKb` | {'int': 4119} |
| `otherPssKb` | {'int': 4119} |
| `processes` | {'int': 4119} |
| `pssFallbackProcesses` | {'int': 4119} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
