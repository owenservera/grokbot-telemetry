# sandbox_telemetry_parse — 2026-10-13 08:58:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=966221 lines=2395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1963 |
| `chrome_profile_sample` | 424 |
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
| `chromeBrowserPssKb` | {'int': 1963} |
| `chromeGpuPssKb` | {'int': 1963} |
| `chromeOtherPssKb` | {'int': 1963} |
| `chromeProcesses` | {'int': 1963} |
| `chromeProfiles` | {'int': 1963} |
| `chromeRendererMaxPssKb` | {'int': 1963} |
| `chromeRendererPssKb` | {'int': 1963} |
| `chromeRenderers` | {'int': 1963} |
| `chromeTabs` | {'int': 1963} |
| `chromeTabsProbedProfiles` | {'int': 1963} |
| `chromeUtilityPssKb` | {'int': 1963} |
| `desktopPssKb` | {'int': 1963} |
| `hostPssKb` | {'int': 1963} |
| `kind` | {'str': 1963} |
| `memAvailableKb` | {'int': 1963} |
| `memTotalKb` | {'int': 1963} |
| `otherPssKb` | {'int': 1963} |
| `processes` | {'int': 1963} |
| `pssFallbackProcesses` | {'int': 1963} |

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
| `cpuMillicores` | {'int': 423} |
| `display` | {'int': 424} |
| `kind` | {'str': 424} |
| `processes` | {'int': 424} |
| `pssKb` | {'int': 424} |
| `rendererMaxPssKb` | {'int': 424} |
| `renderers` | {'int': 424} |
| `tabs` | {'int': 424} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
