# sandbox_telemetry_parse — 2026-10-07 11:28:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=991261 lines=2178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2173 |
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
| `chromeBrowserPssKb` | {'int': 2173} |
| `chromeGpuPssKb` | {'int': 2173} |
| `chromeOtherPssKb` | {'int': 2173} |
| `chromeProcesses` | {'int': 2173} |
| `chromeProfiles` | {'int': 2173} |
| `chromeRendererMaxPssKb` | {'int': 2173} |
| `chromeRendererPssKb` | {'int': 2173} |
| `chromeRenderers` | {'int': 2173} |
| `chromeTabs` | {'int': 2173} |
| `chromeTabsProbedProfiles` | {'int': 2173} |
| `chromeUtilityPssKb` | {'int': 2173} |
| `desktopPssKb` | {'int': 2173} |
| `hostPssKb` | {'int': 2173} |
| `kind` | {'str': 2173} |
| `memAvailableKb` | {'int': 2173} |
| `memTotalKb` | {'int': 2173} |
| `otherPssKb` | {'int': 2173} |
| `processes` | {'int': 2173} |
| `pssFallbackProcesses` | {'int': 2173} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
