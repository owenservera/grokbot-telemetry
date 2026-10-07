# sandbox_telemetry_parse — 2026-10-07 09:39:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=942013 lines=2070
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2065 |
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
| `chromeBrowserPssKb` | {'int': 2065} |
| `chromeGpuPssKb` | {'int': 2065} |
| `chromeOtherPssKb` | {'int': 2065} |
| `chromeProcesses` | {'int': 2065} |
| `chromeProfiles` | {'int': 2065} |
| `chromeRendererMaxPssKb` | {'int': 2065} |
| `chromeRendererPssKb` | {'int': 2065} |
| `chromeRenderers` | {'int': 2065} |
| `chromeTabs` | {'int': 2065} |
| `chromeTabsProbedProfiles` | {'int': 2065} |
| `chromeUtilityPssKb` | {'int': 2065} |
| `desktopPssKb` | {'int': 2065} |
| `hostPssKb` | {'int': 2065} |
| `kind` | {'str': 2065} |
| `memAvailableKb` | {'int': 2065} |
| `memTotalKb` | {'int': 2065} |
| `otherPssKb` | {'int': 2065} |
| `processes` | {'int': 2065} |
| `pssFallbackProcesses` | {'int': 2065} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
