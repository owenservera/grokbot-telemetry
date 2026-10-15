# sandbox_telemetry_parse — 2026-10-16 01:32:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1154326 lines=2558
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2553 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2553} |
| `chromeGpuPssKb` | {'int': 2553} |
| `chromeOtherPssKb` | {'int': 2553} |
| `chromeProcesses` | {'int': 2553} |
| `chromeProfiles` | {'int': 2553} |
| `chromeRendererMaxPssKb` | {'int': 2553} |
| `chromeRendererPssKb` | {'int': 2553} |
| `chromeRenderers` | {'int': 2553} |
| `chromeTabs` | {'int': 2553} |
| `chromeTabsProbedProfiles` | {'int': 2553} |
| `chromeUtilityPssKb` | {'int': 2553} |
| `desktopPssKb` | {'int': 2553} |
| `hostPssKb` | {'int': 2553} |
| `kind` | {'str': 2553} |
| `memAvailableKb` | {'int': 2553} |
| `memTotalKb` | {'int': 2553} |
| `otherPssKb` | {'int': 2553} |
| `processes` | {'int': 2553} |
| `pssFallbackProcesses` | {'int': 2553} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
