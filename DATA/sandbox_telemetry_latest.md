# sandbox_telemetry_parse — 2026-10-06 05:11:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=171194 lines=380
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 375 |
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
| `chromeBrowserPssKb` | {'int': 375} |
| `chromeGpuPssKb` | {'int': 375} |
| `chromeOtherPssKb` | {'int': 375} |
| `chromeProcesses` | {'int': 375} |
| `chromeProfiles` | {'int': 375} |
| `chromeRendererMaxPssKb` | {'int': 375} |
| `chromeRendererPssKb` | {'int': 375} |
| `chromeRenderers` | {'int': 375} |
| `chromeTabs` | {'int': 375} |
| `chromeTabsProbedProfiles` | {'int': 375} |
| `chromeUtilityPssKb` | {'int': 375} |
| `desktopPssKb` | {'int': 375} |
| `hostPssKb` | {'int': 375} |
| `kind` | {'str': 375} |
| `memAvailableKb` | {'int': 375} |
| `memTotalKb` | {'int': 375} |
| `otherPssKb` | {'int': 375} |
| `processes` | {'int': 375} |
| `pssFallbackProcesses` | {'int': 375} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
