# sandbox_telemetry_parse — 2026-10-26 20:41:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=128127 lines=287
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 282 |
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
| `chromeBrowserPssKb` | {'int': 282} |
| `chromeGpuPssKb` | {'int': 282} |
| `chromeOtherPssKb` | {'int': 282} |
| `chromeProcesses` | {'int': 282} |
| `chromeProfiles` | {'int': 282} |
| `chromeRendererMaxPssKb` | {'int': 282} |
| `chromeRendererPssKb` | {'int': 282} |
| `chromeRenderers` | {'int': 282} |
| `chromeTabs` | {'int': 282} |
| `chromeTabsProbedProfiles` | {'int': 282} |
| `chromeUtilityPssKb` | {'int': 282} |
| `desktopPssKb` | {'int': 282} |
| `hostPssKb` | {'int': 282} |
| `kind` | {'str': 282} |
| `memAvailableKb` | {'int': 282} |
| `memTotalKb` | {'int': 282} |
| `otherPssKb` | {'int': 282} |
| `processes` | {'int': 282} |
| `pssFallbackProcesses` | {'int': 282} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
