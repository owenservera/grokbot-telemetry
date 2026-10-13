# sandbox_telemetry_parse — 2026-10-13 10:34:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1015858 lines=2551
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2041 |
| `chrome_profile_sample` | 502 |
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
| `chromeBrowserPssKb` | {'int': 2041} |
| `chromeGpuPssKb` | {'int': 2041} |
| `chromeOtherPssKb` | {'int': 2041} |
| `chromeProcesses` | {'int': 2041} |
| `chromeProfiles` | {'int': 2041} |
| `chromeRendererMaxPssKb` | {'int': 2041} |
| `chromeRendererPssKb` | {'int': 2041} |
| `chromeRenderers` | {'int': 2041} |
| `chromeTabs` | {'int': 2041} |
| `chromeTabsProbedProfiles` | {'int': 2041} |
| `chromeUtilityPssKb` | {'int': 2041} |
| `desktopPssKb` | {'int': 2041} |
| `hostPssKb` | {'int': 2041} |
| `kind` | {'str': 2041} |
| `memAvailableKb` | {'int': 2041} |
| `memTotalKb` | {'int': 2041} |
| `otherPssKb` | {'int': 2041} |
| `processes` | {'int': 2041} |
| `pssFallbackProcesses` | {'int': 2041} |

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
| `cpuMillicores` | {'int': 501} |
| `display` | {'int': 502} |
| `kind` | {'str': 502} |
| `processes` | {'int': 502} |
| `pssKb` | {'int': 502} |
| `rendererMaxPssKb` | {'int': 502} |
| `renderers` | {'int': 502} |
| `tabs` | {'int': 502} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
