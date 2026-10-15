# sandbox_telemetry_parse — 2026-10-15 18:47:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1000646 lines=2218
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2213 |
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
| `chromeBrowserPssKb` | {'int': 2213} |
| `chromeGpuPssKb` | {'int': 2213} |
| `chromeOtherPssKb` | {'int': 2213} |
| `chromeProcesses` | {'int': 2213} |
| `chromeProfiles` | {'int': 2213} |
| `chromeRendererMaxPssKb` | {'int': 2213} |
| `chromeRendererPssKb` | {'int': 2213} |
| `chromeRenderers` | {'int': 2213} |
| `chromeTabs` | {'int': 2213} |
| `chromeTabsProbedProfiles` | {'int': 2213} |
| `chromeUtilityPssKb` | {'int': 2213} |
| `desktopPssKb` | {'int': 2213} |
| `hostPssKb` | {'int': 2213} |
| `kind` | {'str': 2213} |
| `memAvailableKb` | {'int': 2213} |
| `memTotalKb` | {'int': 2213} |
| `otherPssKb` | {'int': 2213} |
| `processes` | {'int': 2213} |
| `pssFallbackProcesses` | {'int': 2213} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
