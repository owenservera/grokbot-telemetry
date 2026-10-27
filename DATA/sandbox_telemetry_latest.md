# sandbox_telemetry_parse — 2026-10-27 05:35:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=348544 lines=774
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 769 |
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
| `chromeBrowserPssKb` | {'int': 769} |
| `chromeGpuPssKb` | {'int': 769} |
| `chromeOtherPssKb` | {'int': 769} |
| `chromeProcesses` | {'int': 769} |
| `chromeProfiles` | {'int': 769} |
| `chromeRendererMaxPssKb` | {'int': 769} |
| `chromeRendererPssKb` | {'int': 769} |
| `chromeRenderers` | {'int': 769} |
| `chromeTabs` | {'int': 769} |
| `chromeTabsProbedProfiles` | {'int': 769} |
| `chromeUtilityPssKb` | {'int': 769} |
| `desktopPssKb` | {'int': 769} |
| `hostPssKb` | {'int': 769} |
| `kind` | {'str': 769} |
| `memAvailableKb` | {'int': 769} |
| `memTotalKb` | {'int': 769} |
| `otherPssKb` | {'int': 769} |
| `processes` | {'int': 769} |
| `pssFallbackProcesses` | {'int': 769} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
