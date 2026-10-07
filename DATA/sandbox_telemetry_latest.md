# sandbox_telemetry_parse — 2026-10-07 10:41:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=969829 lines=2131
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2126 |
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
| `chromeBrowserPssKb` | {'int': 2126} |
| `chromeGpuPssKb` | {'int': 2126} |
| `chromeOtherPssKb` | {'int': 2126} |
| `chromeProcesses` | {'int': 2126} |
| `chromeProfiles` | {'int': 2126} |
| `chromeRendererMaxPssKb` | {'int': 2126} |
| `chromeRendererPssKb` | {'int': 2126} |
| `chromeRenderers` | {'int': 2126} |
| `chromeTabs` | {'int': 2126} |
| `chromeTabsProbedProfiles` | {'int': 2126} |
| `chromeUtilityPssKb` | {'int': 2126} |
| `desktopPssKb` | {'int': 2126} |
| `hostPssKb` | {'int': 2126} |
| `kind` | {'str': 2126} |
| `memAvailableKb` | {'int': 2126} |
| `memTotalKb` | {'int': 2126} |
| `otherPssKb` | {'int': 2126} |
| `processes` | {'int': 2126} |
| `pssFallbackProcesses` | {'int': 2126} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
