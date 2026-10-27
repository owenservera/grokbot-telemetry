# sandbox_telemetry_parse — 2026-10-27 08:14:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=409112 lines=908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 903 |
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
| `chromeBrowserPssKb` | {'int': 903} |
| `chromeGpuPssKb` | {'int': 903} |
| `chromeOtherPssKb` | {'int': 903} |
| `chromeProcesses` | {'int': 903} |
| `chromeProfiles` | {'int': 903} |
| `chromeRendererMaxPssKb` | {'int': 903} |
| `chromeRendererPssKb` | {'int': 903} |
| `chromeRenderers` | {'int': 903} |
| `chromeTabs` | {'int': 903} |
| `chromeTabsProbedProfiles` | {'int': 903} |
| `chromeUtilityPssKb` | {'int': 903} |
| `desktopPssKb` | {'int': 903} |
| `hostPssKb` | {'int': 903} |
| `kind` | {'str': 903} |
| `memAvailableKb` | {'int': 903} |
| `memTotalKb` | {'int': 903} |
| `otherPssKb` | {'int': 903} |
| `processes` | {'int': 903} |
| `pssFallbackProcesses` | {'int': 903} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
