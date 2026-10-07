# sandbox_telemetry_parse — 2026-10-07 08:53:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=920581 lines=2023
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2018 |
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
| `chromeBrowserPssKb` | {'int': 2018} |
| `chromeGpuPssKb` | {'int': 2018} |
| `chromeOtherPssKb` | {'int': 2018} |
| `chromeProcesses` | {'int': 2018} |
| `chromeProfiles` | {'int': 2018} |
| `chromeRendererMaxPssKb` | {'int': 2018} |
| `chromeRendererPssKb` | {'int': 2018} |
| `chromeRenderers` | {'int': 2018} |
| `chromeTabs` | {'int': 2018} |
| `chromeTabsProbedProfiles` | {'int': 2018} |
| `chromeUtilityPssKb` | {'int': 2018} |
| `desktopPssKb` | {'int': 2018} |
| `hostPssKb` | {'int': 2018} |
| `kind` | {'str': 2018} |
| `memAvailableKb` | {'int': 2018} |
| `memTotalKb` | {'int': 2018} |
| `otherPssKb` | {'int': 2018} |
| `processes` | {'int': 2018} |
| `pssFallbackProcesses` | {'int': 2018} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
