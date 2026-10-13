# sandbox_telemetry_parse — 2026-10-13 10:47:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1022224 lines=2571
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2051 |
| `chrome_profile_sample` | 512 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2051} |
| `chromeGpuPssKb` | {'int': 2051} |
| `chromeOtherPssKb` | {'int': 2051} |
| `chromeProcesses` | {'int': 2051} |
| `chromeProfiles` | {'int': 2051} |
| `chromeRendererMaxPssKb` | {'int': 2051} |
| `chromeRendererPssKb` | {'int': 2051} |
| `chromeRenderers` | {'int': 2051} |
| `chromeTabs` | {'int': 2051} |
| `chromeTabsProbedProfiles` | {'int': 2051} |
| `chromeUtilityPssKb` | {'int': 2051} |
| `desktopPssKb` | {'int': 2051} |
| `hostPssKb` | {'int': 2051} |
| `kind` | {'str': 2051} |
| `memAvailableKb` | {'int': 2051} |
| `memTotalKb` | {'int': 2051} |
| `otherPssKb` | {'int': 2051} |
| `processes` | {'int': 2051} |
| `pssFallbackProcesses` | {'int': 2051} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 511} |
| `display` | {'int': 512} |
| `kind` | {'str': 512} |
| `processes` | {'int': 512} |
| `pssKb` | {'int': 512} |
| `rendererMaxPssKb` | {'int': 512} |
| `renderers` | {'int': 512} |
| `tabs` | {'int': 512} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
