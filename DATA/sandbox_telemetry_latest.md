# sandbox_telemetry_parse — 2026-11-23 18:23:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1940020 lines=4302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4287 |
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
| `chromeBrowserPssKb` | {'int': 4287} |
| `chromeGpuPssKb` | {'int': 4287} |
| `chromeOtherPssKb` | {'int': 4287} |
| `chromeProcesses` | {'int': 4287} |
| `chromeProfiles` | {'int': 4287} |
| `chromeRendererMaxPssKb` | {'int': 4287} |
| `chromeRendererPssKb` | {'int': 4287} |
| `chromeRenderers` | {'int': 4287} |
| `chromeTabs` | {'int': 4287} |
| `chromeTabsProbedProfiles` | {'int': 4287} |
| `chromeUtilityPssKb` | {'int': 4287} |
| `desktopPssKb` | {'int': 4287} |
| `hostPssKb` | {'int': 4287} |
| `kind` | {'str': 4287} |
| `memAvailableKb` | {'int': 4287} |
| `memTotalKb` | {'int': 4287} |
| `otherPssKb` | {'int': 4287} |
| `processes` | {'int': 4287} |
| `pssFallbackProcesses` | {'int': 4287} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
