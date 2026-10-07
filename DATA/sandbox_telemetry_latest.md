# sandbox_telemetry_parse — 2026-10-07 11:38:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=995821 lines=2188
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2183 |
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
| `chromeBrowserPssKb` | {'int': 2183} |
| `chromeGpuPssKb` | {'int': 2183} |
| `chromeOtherPssKb` | {'int': 2183} |
| `chromeProcesses` | {'int': 2183} |
| `chromeProfiles` | {'int': 2183} |
| `chromeRendererMaxPssKb` | {'int': 2183} |
| `chromeRendererPssKb` | {'int': 2183} |
| `chromeRenderers` | {'int': 2183} |
| `chromeTabs` | {'int': 2183} |
| `chromeTabsProbedProfiles` | {'int': 2183} |
| `chromeUtilityPssKb` | {'int': 2183} |
| `desktopPssKb` | {'int': 2183} |
| `hostPssKb` | {'int': 2183} |
| `kind` | {'str': 2183} |
| `memAvailableKb` | {'int': 2183} |
| `memTotalKb` | {'int': 2183} |
| `otherPssKb` | {'int': 2183} |
| `processes` | {'int': 2183} |
| `pssFallbackProcesses` | {'int': 2183} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
