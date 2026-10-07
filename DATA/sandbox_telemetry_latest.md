# sandbox_telemetry_parse — 2026-10-07 07:05:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=871789 lines=1916
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1911 |
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
| `chromeBrowserPssKb` | {'int': 1911} |
| `chromeGpuPssKb` | {'int': 1911} |
| `chromeOtherPssKb` | {'int': 1911} |
| `chromeProcesses` | {'int': 1911} |
| `chromeProfiles` | {'int': 1911} |
| `chromeRendererMaxPssKb` | {'int': 1911} |
| `chromeRendererPssKb` | {'int': 1911} |
| `chromeRenderers` | {'int': 1911} |
| `chromeTabs` | {'int': 1911} |
| `chromeTabsProbedProfiles` | {'int': 1911} |
| `chromeUtilityPssKb` | {'int': 1911} |
| `desktopPssKb` | {'int': 1911} |
| `hostPssKb` | {'int': 1911} |
| `kind` | {'str': 1911} |
| `memAvailableKb` | {'int': 1911} |
| `memTotalKb` | {'int': 1911} |
| `otherPssKb` | {'int': 1911} |
| `processes` | {'int': 1911} |
| `pssFallbackProcesses` | {'int': 1911} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
