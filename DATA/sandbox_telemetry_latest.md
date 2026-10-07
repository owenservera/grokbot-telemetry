# sandbox_telemetry_parse — 2026-10-07 10:36:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=967549 lines=2126
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2121 |
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
| `chromeBrowserPssKb` | {'int': 2121} |
| `chromeGpuPssKb` | {'int': 2121} |
| `chromeOtherPssKb` | {'int': 2121} |
| `chromeProcesses` | {'int': 2121} |
| `chromeProfiles` | {'int': 2121} |
| `chromeRendererMaxPssKb` | {'int': 2121} |
| `chromeRendererPssKb` | {'int': 2121} |
| `chromeRenderers` | {'int': 2121} |
| `chromeTabs` | {'int': 2121} |
| `chromeTabsProbedProfiles` | {'int': 2121} |
| `chromeUtilityPssKb` | {'int': 2121} |
| `desktopPssKb` | {'int': 2121} |
| `hostPssKb` | {'int': 2121} |
| `kind` | {'str': 2121} |
| `memAvailableKb` | {'int': 2121} |
| `memTotalKb` | {'int': 2121} |
| `otherPssKb` | {'int': 2121} |
| `processes` | {'int': 2121} |
| `pssFallbackProcesses` | {'int': 2121} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
