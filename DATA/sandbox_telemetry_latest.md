# sandbox_telemetry_parse — 2026-10-27 03:30:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=296564 lines=659
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 654 |
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
| `chromeBrowserPssKb` | {'int': 654} |
| `chromeGpuPssKb` | {'int': 654} |
| `chromeOtherPssKb` | {'int': 654} |
| `chromeProcesses` | {'int': 654} |
| `chromeProfiles` | {'int': 654} |
| `chromeRendererMaxPssKb` | {'int': 654} |
| `chromeRendererPssKb` | {'int': 654} |
| `chromeRenderers` | {'int': 654} |
| `chromeTabs` | {'int': 654} |
| `chromeTabsProbedProfiles` | {'int': 654} |
| `chromeUtilityPssKb` | {'int': 654} |
| `desktopPssKb` | {'int': 654} |
| `hostPssKb` | {'int': 654} |
| `kind` | {'str': 654} |
| `memAvailableKb` | {'int': 654} |
| `memTotalKb` | {'int': 654} |
| `otherPssKb` | {'int': 654} |
| `processes` | {'int': 654} |
| `pssFallbackProcesses` | {'int': 654} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
