# sandbox_telemetry_parse — 2026-10-15 21:55:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1074774 lines=2382
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2377 |
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
| `chromeBrowserPssKb` | {'int': 2377} |
| `chromeGpuPssKb` | {'int': 2377} |
| `chromeOtherPssKb` | {'int': 2377} |
| `chromeProcesses` | {'int': 2377} |
| `chromeProfiles` | {'int': 2377} |
| `chromeRendererMaxPssKb` | {'int': 2377} |
| `chromeRendererPssKb` | {'int': 2377} |
| `chromeRenderers` | {'int': 2377} |
| `chromeTabs` | {'int': 2377} |
| `chromeTabsProbedProfiles` | {'int': 2377} |
| `chromeUtilityPssKb` | {'int': 2377} |
| `desktopPssKb` | {'int': 2377} |
| `hostPssKb` | {'int': 2377} |
| `kind` | {'str': 2377} |
| `memAvailableKb` | {'int': 2377} |
| `memTotalKb` | {'int': 2377} |
| `otherPssKb` | {'int': 2377} |
| `processes` | {'int': 2377} |
| `pssFallbackProcesses` | {'int': 2377} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
