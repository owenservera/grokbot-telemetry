# sandbox_telemetry_parse — 2026-10-06 05:26:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=178490 lines=396
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 391 |
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
| `chromeBrowserPssKb` | {'int': 391} |
| `chromeGpuPssKb` | {'int': 391} |
| `chromeOtherPssKb` | {'int': 391} |
| `chromeProcesses` | {'int': 391} |
| `chromeProfiles` | {'int': 391} |
| `chromeRendererMaxPssKb` | {'int': 391} |
| `chromeRendererPssKb` | {'int': 391} |
| `chromeRenderers` | {'int': 391} |
| `chromeTabs` | {'int': 391} |
| `chromeTabsProbedProfiles` | {'int': 391} |
| `chromeUtilityPssKb` | {'int': 391} |
| `desktopPssKb` | {'int': 391} |
| `hostPssKb` | {'int': 391} |
| `kind` | {'str': 391} |
| `memAvailableKb` | {'int': 391} |
| `memTotalKb` | {'int': 391} |
| `otherPssKb` | {'int': 391} |
| `processes` | {'int': 391} |
| `pssFallbackProcesses` | {'int': 391} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
