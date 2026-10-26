# sandbox_telemetry_parse — 2026-10-26 18:12:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=64254 lines=146
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 141 |
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
| `chromeBrowserPssKb` | {'int': 141} |
| `chromeGpuPssKb` | {'int': 141} |
| `chromeOtherPssKb` | {'int': 141} |
| `chromeProcesses` | {'int': 141} |
| `chromeProfiles` | {'int': 141} |
| `chromeRendererMaxPssKb` | {'int': 141} |
| `chromeRendererPssKb` | {'int': 141} |
| `chromeRenderers` | {'int': 141} |
| `chromeTabs` | {'int': 141} |
| `chromeTabsProbedProfiles` | {'int': 141} |
| `chromeUtilityPssKb` | {'int': 141} |
| `desktopPssKb` | {'int': 141} |
| `hostPssKb` | {'int': 141} |
| `kind` | {'str': 141} |
| `memAvailableKb` | {'int': 141} |
| `memTotalKb` | {'int': 141} |
| `otherPssKb` | {'int': 141} |
| `processes` | {'int': 141} |
| `pssFallbackProcesses` | {'int': 141} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
