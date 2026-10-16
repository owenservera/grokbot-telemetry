# sandbox_telemetry_parse — 2026-10-16 06:14:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=175342 lines=655
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 424 |
| `memory_sample` | 222 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 222} |
| `chromeGpuPssKb` | {'int': 222} |
| `chromeOtherPssKb` | {'int': 222} |
| `chromeProcesses` | {'int': 222} |
| `chromeProfiles` | {'int': 222} |
| `chromeRendererMaxPssKb` | {'int': 222} |
| `chromeRendererPssKb` | {'int': 222} |
| `chromeRenderers` | {'int': 222} |
| `chromeTabs` | {'int': 222} |
| `chromeTabsProbedProfiles` | {'int': 222} |
| `chromeUtilityPssKb` | {'int': 222} |
| `desktopPssKb` | {'int': 222} |
| `hostPssKb` | {'int': 222} |
| `kind` | {'str': 222} |
| `memAvailableKb` | {'int': 222} |
| `memTotalKb` | {'int': 222} |
| `otherPssKb` | {'int': 222} |
| `processes` | {'int': 222} |
| `pssFallbackProcesses` | {'int': 222} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 421} |
| `display` | {'int': 424} |
| `kind` | {'str': 424} |
| `processes` | {'int': 424} |
| `pssKb` | {'int': 424} |
| `rendererMaxPssKb` | {'int': 424} |
| `renderers` | {'int': 424} |
| `tabs` | {'int': 423} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
