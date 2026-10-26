# sandbox_telemetry_parse — 2026-10-26 17:21:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=41151 lines=95
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 90 |
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
| `chromeBrowserPssKb` | {'int': 90} |
| `chromeGpuPssKb` | {'int': 90} |
| `chromeOtherPssKb` | {'int': 90} |
| `chromeProcesses` | {'int': 90} |
| `chromeProfiles` | {'int': 90} |
| `chromeRendererMaxPssKb` | {'int': 90} |
| `chromeRendererPssKb` | {'int': 90} |
| `chromeRenderers` | {'int': 90} |
| `chromeTabs` | {'int': 90} |
| `chromeTabsProbedProfiles` | {'int': 90} |
| `chromeUtilityPssKb` | {'int': 90} |
| `desktopPssKb` | {'int': 90} |
| `hostPssKb` | {'int': 90} |
| `kind` | {'str': 90} |
| `memAvailableKb` | {'int': 90} |
| `memTotalKb` | {'int': 90} |
| `otherPssKb` | {'int': 90} |
| `processes` | {'int': 90} |
| `pssFallbackProcesses` | {'int': 90} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
